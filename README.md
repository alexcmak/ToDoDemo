## ToDo Demo

This app is the result of following everything from this 2 year old video to build a Swift UI app that uses MongoDB Realm.
The video from Stephanie is great, in the true sense of a Crash Course, she goes extremely fast. 

https://youtu.be/b6q9vKaXtoU?si=4aSch4pzb90VzDdW

The official source code for the video is behind a pay wall.

There are a lot of gotchas in building this app:

* When it's time to find the github address for realm, the address given in video is outdated. Use this one http://github.com/realm/realm-swift
* When choosing Realm, you are presented with two items to Add to Target, choose *RealmSwift*, make sure Ream is set to None
* Do not even touch Product | Clean Build Folder, everything breaks
* The if !task.isInvalidated "solution" does not work.
