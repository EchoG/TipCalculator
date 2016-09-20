# Pre-work - *Easy Tips*

**Easy Tips** is a tip calculator application for iOS.

Submitted by: **Chenran**

Time spent: **5** hours spent in total

## User Stories

The following **required** functionality is complete:

* [ ] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [ ] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/link/to/your/gif/file.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Understanding how to use NSUserDefaults is a little difficult to me, but after a while I found out it is a key-value storage, like HashMap in Java. Then I suddenly understand the examples on the interaction and know how to use it.
Before I use NSUserDefaults, I tried to use the prepareForSegue method, but I tried several time and it can only pass the value of main view page to setting page, and cannot do the opposite way. Through the attempt, I think I have learned deeper about how to pass values between different controllers.

## License

    Copyright [Chenran] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.