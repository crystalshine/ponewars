import QtQuick 2.4
import Bacon2D 1.0
Sprite{
    property vector2d aim:Qt.vector2d(0,0)
    animation: "from"
    animations: [

        SpriteAnimation{
            duration: 500
            frames: 6
            name: "from"
            source: "sprites/lyrafrom.png"
            loops: Animation.Infinite

        },
        SpriteAnimation{
            duration: 500
            frames: 6
            name: "fromr"
            source: "sprites/lyrafromr.png"
            loops: Animation.Infinite
        },
        SpriteAnimation{
            duration: 500
            frames: 6
            name: "r"
            source: "sprites/lyrar.png"
            loops: Animation.Infinite
        },
        SpriteAnimation{
            duration: 500
            frames: 6
            name: "tor"
            source: "sprites/lyrator.png"
            loops: Animation.Infinite
        },
        SpriteAnimation{
            duration: 500
            frames: 6
            name: "to"
            source: "sprites/lyrato.png"
            loops: Animation.Infinite
        },
        SpriteAnimation{
            duration: 500
            frames: 6
            name: "tol"
            source: "sprites/lyratol.png"
            loops: Animation.Infinite
        },
        SpriteAnimation{
            duration: 500
            frames: 6
            name: "l"
            source: "sprites/lyral.png"
            loops: Animation.Infinite
        },
        SpriteAnimation{
            duration: 500
            frames: 6
            name: "froml"
            source: "sprites/lyrafroml.png"
            loops: Animation.Infinite
        },
        SpriteAnimation{
            duration: 500
            frames: 1
            name: "standby"
            source: "sprites/lyrastand.png"
            loops: Animation.Infinite
        }
    ]

}
