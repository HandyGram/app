import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/telegram/chats.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/widgets/chat_tile.dart';
import 'package:handygram/src/widgets/settings/pre_button.dart';
import 'package:rotary_scrollbar/rotary_scrollbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget buildList(
      List<TgChatListEntry> chats, TgChatListType type, BuildContext context) {
    final ScrollController controller = ScrollController();

    var lw = ListView.builder(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      controller: controller,
      itemCount: type == TgChatListType.main
          ? chats.length + 3
          : chats.length + 2, // 2 paddings + settings button
      itemBuilder: (context, pi) {
        var pad = type == TgChatListType.main ? 2 : 1;
        if (pi == 0 || pi == chats.length + pad) {
          return const SizedBox(height: 50);
        }
        if (pi == 1 && type == TgChatListType.main) {
          return PreSettingsButton(
            title: "Profile",
            icon: Icons.person,
            isCentered: true,
            onPressed: () {
              Navigator.pushNamed(context, "/pre_settings");
            },
          );
        }
        int i = pi - pad;
        var c = chats[i];
        return ChatTile(entry: c);
      },
    );

    if (session.isSquareScreen) {
      return lw;
    } else {
      return RotaryScrollWrapper(
        rotaryScrollbar: RotaryScrollbar(
          controller: controller,
          width: 3,
        ),
        child: lw,
      );
    }
  }

  final int curList = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, _) {
          ref.watch(session.chatListsP);
          ref.watch(ChangeNotifierProvider((_) => session.updStats));

          List<dynamic> lists = [
            session.chatLists.main,
            session.chatLists.archive,
            ...session.chatLists.filters.values,
          ];

          if (session.chatLists.main.chats.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 30,
                    width: 30,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text("Please wait..."),
                  if (!settingsStorage.isAsyncUpdates)
                    Text(
                      "Handling all missed events...\n"
                      "${session.updStats.handled}/${session.updStats.finalUpdate ?? session.updStats.total}"
                      "${session.updStats.finalUpdate == null ? "" : " (${(session.updStats.handled / session.updStats.finalUpdate! * 100).toStringAsFixed(1)}%)"}\n\n"
                      "This may take from\nsome seconds to minute.",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                ],
              ),
            );
          }

          return Stack(
            children: [
              SizedBox.expand(
                child: buildList(
                  lists[curList].chats,
                  lists[curList] is TgChatList
                      ? lists[curList].type
                      : TgChatListType.folder,
                  context,
                ),
              ),
              // TODO: folders UI
              // if (curList != 0)
              //   SizedBox.expand(
              //     child: Align(
              //       alignment: Alignment.centerLeft,
              //       child: IconButton(
              //         icon: const Icon(
              //           Icons.navigate_before,
              //         ),
              //         onPressed: () {
              //           setState(() {
              //             curList--;
              //           });
              //         },
              //       ),
              //     ),
              //   ),
              // if (curList + 1 != lists.length)
              //   SizedBox.expand(
              //     child: Align(
              //       alignment: Alignment.centerRight,
              //       child: IconButton(
              //         icon: const Icon(
              //           Icons.navigate_next,
              //         ),
              //         onPressed: () {
              //           setState(() {
              //             curList++;
              //           });
              //         },
              //       ),
              //     ),
              //   ),
            ],
          );
        },
      ),
    );
  }
}
