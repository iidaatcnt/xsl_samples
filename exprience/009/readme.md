[ ] 行頭に全角スペースがあっても
動くのか？

「（タブ）<?xml version="1.0" encoding="Shift_JIS"?>」
XML文書のXML文書の宣言の前にタブがあると動かない
他は影響しない

「　<?xml version="1.0" encoding="Shift_JIS"?>」
XML文書のXML文書の宣言の前に全角スペースがあると
文字化けを起こし表示されない。
他は影響しない

重要：
エラーが発生したあとのコードを直しても
・F5を押してもHTML変化は不正はなおらない
・紛らわしいのが追加した文字は反映されたりする
・ブラウザを開く直すと復旧する
