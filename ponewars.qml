import QtQuick 2.4
import Bacon2D 1.0
import "logic.js" as Logic

Game {
    id: game
    width: 800
    height: 600
    currentScene: scene

    Settings {
        id: settings

    }

    Scene {
        id: scene
        physics: true
        width: parent.width
        height: parent.height
        focus:true

        ImageLayer {
            id: layer
            anchors.fill: parent
            source: "sprites/grass.png"
           // layerType: Layer.Mirrored



        }
        Entity {
            updateInterval: 10
            Player {
                id:player

            }
            behavior: ScriptBehavior {
                script: {
                Logic.movePlayer()
                }
            }
        }
        Entity {
            updateInterval: 10
            Enemy {
                id:muffin

            }
            behavior: ScriptBehavior {
                script: {
                Logic.moveEnemy()
                }
            }
        }

        Keys.onPressed: {
            if (event.key == Qt.Key_W) {
                player.aim=player.aim.plus(Qt.vector2d(0,-1))
            }
            if (event.key == Qt.Key_S) {
                player.aim=player.aim.plus(Qt.vector2d(0,1))
            }
            if (event.key == Qt.Key_A) {
                player.aim=player.aim.plus(Qt.vector2d(-1,0))
            }
            if (event.key == Qt.Key_D) {
                player.aim=player.aim.plus(Qt.vector2d(1,0))

            }
        }

        Keys.onReleased: {
            if (event.key == Qt.Key_W) {
                player.aim=player.aim.minus(Qt.vector2d(0,-1))
            }
            if (event.key == Qt.Key_S) {
                player.aim=player.aim.minus(Qt.vector2d(0,1))
            }
            if (event.key == Qt.Key_A) {
                player.aim=player.aim.minus(Qt.vector2d(-1,0))
            }
            if (event.key == Qt.Key_D) {
                player.aim=player.aim.minus(Qt.vector2d(1,0))

            }
        }
    }
}
