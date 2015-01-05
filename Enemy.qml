import QtQuick 2.4
import Bacon2D 1.0

Sprite{
    property vector2d aim:Qt.vector2d(0,0)
    animation: "moving"
    animations: [
        SpriteAnimation{
            duration: 300
            frames: 7
            name: "moving"
            source: "sprites/muffin.png"
            loops: Animation.Infinite
        }
    ]

}
