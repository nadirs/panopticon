import QtQuick 2.1
import QtQuick.Controls 1.1
import Panopticon 1.0

Item {
	Component {
		id: nodeComponent

		Rectangle {
			color: "red"

			/*ListView {
				model: mnemonics
				delegate: Text {
					text: mnemonic
				}
			}*/
			height: 100; width: 100
		}
	}

	Component {
		id: edgeComponent

		PathView {
			delegate: Rectangle { width: 2; height: 2; color: "blue" }
			model: 500
		}
	}

	ScrollView {
		anchors.fill: parent
		Sugiyama {
			height: childrenRect.height
			width: childrenRect.width

			vertexDelegate: nodeComponent
			edgeDelegate: edgeComponent

			QtObject { id: e1; property int from: 0; property int to: 1 }
			QtObject { id: e2; property int from: 0; property int to: 2 }
			QtObject { id: e3; property int from: 2; property int to: 3 }
			QtObject { id: e4; property int from: 3; property int to: 4 }
			QtObject { id: e5; property int from: 3; property int to: 5 }
			QtObject { id: e6; property int from: 3; property int to: 6 }
			QtObject { id: e7; property int from: 5; property int to: 6 }
			QtObject { id: e8; property int from: 6; property int to: 7 }
			QtObject { id: e9; property int from: 6; property int to: 8 }
			QtObject { id: e10; property int from: 7; property int to: 8 }
			QtObject { id: e11; property int from: 6; property int to: 6 }

			vertices: [0,1,2,3,4,5,6,7,8]
			edges: [e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11]

			onLayoutStart: {}
			onLayoutDone: {}
			onRoutingStart: {}
			onRoutingDone: {}
		}
	}
}
