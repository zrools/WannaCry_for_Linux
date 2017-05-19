import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 1.5

Window {
    id: window
    visible: true
    width: 800
    height: 600
    color: "#970d0d"
    title: qsTr("Wana Decrypt0r 3.0")
    Component.onCompleted: {
            setX(Screen.width / 2 - width / 2);
            setY(Screen.height / 2 - height / 2);
        }

    ComboBox {
        id: comboBox
        x: 667
        y: 19
        width: 125
        activeFocusOnPress: false
        model: [ "English", "简体中文" ]
    }

    Text {
        id: text1
        x: 181
        y: 19
        width: 454
        height: 29
        color: "#ffffff"
        text: qsTr("Ooops, your files have been encrypted!")
        styleColor: "#ffffff"
        font.bold: true
        font.family: "Arial"
        horizontalAlignment: Text.AlignHCenter
        elide: Text.ElideNone
        font.pixelSize: 22
    }

    Rectangle {
        id: rectangle
        x: 180
        y: 68
        width: 612
        height: 396
        color: "#ffffff"

        Text {
            id: text2
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            color: "#000000"
            text: qsTr("<h2>What Happened to My Computer?</h2>\nYour important files are encrypted.<br>\nMany of your documents, photos, videos, databases and other files are no longer accessible because they have been encrypted. Maybe you are busy looking for a way to recover your files, but do not waste your time. Nobody can recover your files without our decryption service.<br>\n\n<h2>Can I Recover My Files?</h2>\nSure. We guarantee that you can recover all your files safely and easily. But you have not so enough time.<br>\nYou can decrypt some of your files for free. Try now by clicking &lt;Decrypt&gt;.<br>\nBut if you want to decrypt all your files, you need to pay.<br>\nYou only have 3 days to submit the payment. After that the price will be doubled.<br>\nAlso, if you don't pay in 7 days, you won't be able to recover your files forever.<br>\nWe will have free events for users who are so poor that they couldn't pay in 6 months.<br>\n\n<h2>How Do I Pay?</h2>\nPayment is accepted in Bitcoin only. For more information, click &lt;About bitcoin&gt;.<br>\nAnd send the correct amount to the address specified in this window.<br>\nAfter your payment, click &lt;Check Payment&gt;. Best time to check: 9:00am - 11:00am GMT from Monday to Friday.<br>\nOnce the payment is checked, you can start decrypting your files immediately.\n")
            fontSizeMode: Text.FixedSize
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            font.pixelSize: 12
        }

    }

    Button {
        id: button
        x: 524
        y: 550
        width: 271
        height: 29
        text: qsTr("Decrypt")
    }

    Button {
        id: button1
        x: 181
        y: 550
        width: 271
        height: 29
        text: qsTr("Check Payment")
    }

    Image {
        id: image
        x: 180
        width: 156
        height: 61
        clip: true
        fillMode: Image.Stretch
        visible: true
        z: 1
        anchors.top: parent.top
        anchors.topMargin: 477
        source: "images/bitcoin.png"
    }

    Text {
        id: text3
        x: 349
        y: 477
        color: "#ccc54e"
        text: qsTr("Send $300 worth of bitcoin to this address:")
        font.bold: true
        font.pixelSize: 14
    }

    Button {
        id: button2
        x: 712
        y: 506
        text: qsTr("copy")
    }

    TextField {
        id: textField
        x: 349
        y: 506
        width: 357
        height: 29
        text: "85b5a4ca7a529a765cb162c1a9dddac8418aeba0"
        placeholderText: qsTr("Text Field")
    }

    Text {
        id: text4
        x: 14
        y: 489
        width: 147
        height: 105
        color: "#ffffff"
        text: qsTr("About bintcoin <br><br>\nHow to buy bitcoins? <br>\n<h3>Contact Us</h3>")
        font.underline: true
        font.bold: true
        font.pixelSize: 12
    }

    Item {
        id: item1
        x: 9
        y: 132
        width: 152
        height: 332

        QtObject {
            id: attr_time
            property int second_3day;
            property int second_6day;
            Component.onCompleted: {
                second_3day = 3 * 24 * 60 * 60;
                second_6day = 6 * 24 * 60 * 60;
            }
        }

        Text {
            id: text5
            x: 0
            y: 42
            width: parent.width
            height: 125
            color: "#ffffff"
            text: qsTr("3day")
            style: Text.Normal
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 12

            Rectangle {
                id: rectangle1
                x: 142
                y: 3
                width: 20
                height: 107
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#56f628"
                    }

                    GradientStop {
                        position: 0.469
                        color: "#ffffff"
                    }

                    GradientStop {
                        position: 1
                        color: "#f60404"
                    }

                }
            }
        }

        Text {
            id: text7
            x: 2
            y: 14
            width: 150
            height: 17
            color: "#f6cd00"
            text: qsTr("Payment will be raised on")
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 12
        }

        Text {
            id: text6
            x: 0
            y: 197
            width: parent.width
            height: 125
            color: "#ffffff"
            font.bold: true
            text: qsTr("6day")
            style: Text.Normal
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 12

            Rectangle {
                id: rectangle2
                x: 143
                y: 3
                width: 20
                height: 107
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#40f335"
                    }

                    GradientStop {
                        position: 0.707
                        color: "#ffffff"
                    }

                    GradientStop {
                        position: 1
                        color: "#f60404"
                    }

                }
            }
        }

        Text {
            id: text8
            x: 1
            y: 170
            width: 150
            height: 17
            color: "#f6cd00"
            text: qsTr("Your files will be lost on")
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 12
        }

        Timer {
            interval: 1000; running: true; repeat: true
            triggeredOnStart: true
            onTriggered: {
                attr_time.second_3day -= 1;
                attr_time.second_6day -= 1;
                if (attr_time.second_3day > -1) {
                    text5.text = Qt.formatDateTime(new Date(), "dd/MM/yyyy hh:mm:ss") +
                            "<br><br>Time Left <br>" +
                            "<h2>" + timeStamp(attr_time.second_3day) + "</h2>";
                }

                if (attr_time.second_6day > -1) {
                    text6.text = Qt.formatDateTime(new Date(), "dd/MM/yyyy hh:mm:ss") +
                            "<br><br>Time Left <br>" +
                            "<h2>" + timeStamp(attr_time.second_6day) + "</h2>";
                }
            }


            function timeStamp(second_time) {
                var second = parseInt(second_time) % 60;
                var min = parseInt(second_time / 60) % 60;
                var hour = parseInt( parseInt(second_time / 60) /60 ) % 24;
                var day = parseInt( parseInt( parseInt(second_time / 60) /60 ) / 24 );

                day = day < 10 ? '0' + day : day;
                hour = hour < 10 ? '0' + hour : hour;
                min = min < 10 ? '0' + min : min;
                second = second < 10 ? '0' + second : second;

                return day + ":" + hour + ":" + min + ":" + second;
            }
        }


    }

    Image {
        id: image1
        x: 29
        y: 11
        width: 117
        height: 115
        source: "images/logo.png"
    }
}
