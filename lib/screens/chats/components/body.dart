import 'package:chat/components/filled_outline_button.dart';
import 'package:chat/constants.dart';
import 'package:chat/models/Chat.dart';
import 'package:chat/screens/messages/message_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'chat_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Column(
        children: [
          SizedBox(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.98,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: chatsData.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(
                                      2), // Adjust the padding as needed
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors
                                          .white, // Adjust the color as needed
                                      width: 2, // Adjust the width as needed
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 24,
                                    backgroundImage:
                                        AssetImage(chatsData[index].image),
                                  ),
                                ),
                                if (chatsData[index].isActive)
                                  Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                      height: 16,
                                      width: 16,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                            width: 3),
                                      ),
                                    ),
                                  )
                              ],
                            ),
                            const SizedBox(
                                height:
                                    8), // Add spacing between image and name
                            Text(
                              chatsData[index].name,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: ListView.builder(
                  itemCount: chatsData.length,
                  itemBuilder: (context, index) => ChatCard(
                    chat: chatsData[index],
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MessagesScreen(
                          imageString: chatsData[index].image,
                          lastsSeen: chatsData[index].time,
                          name: chatsData[index].name,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
