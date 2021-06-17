{
	"contents": {
		"3445476e-4900-47ac-b632-79fed1dac813": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "onboard",
			"subject": "onboard",
			"name": "onboard",
			"documentation": "DEmo first Worklow boarding",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"06473cfc-8a0f-4991-ab6c-0be7c79bc76e": {
					"name": "Assign and approve equipment"
				},
				"18a55000-10b4-44c5-b64e-46056fcb392f": {
					"name": "ProductData"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"fe6bc32e-926a-4f1a-9026-9c385e00328b": {
					"name": "SequenceFlow2"
				},
				"900608f5-5c51-4c96-9125-c15f09c12f19": {
					"name": "SequenceFlow3"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"06473cfc-8a0f-4991-ab6c-0be7c79bc76e": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Assign and approve equipment for ${context.empData.firstName} ${context.empData.lastName}",
			"description": "The manager assigns and approves equipment and relocation of the newly onboarded employee",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy},${context.manager}",
			"formReference": "/forms/onboard/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Assign and approve equipment"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "18a55000-10b4-44c5-b64e-46056fcb392f"
		},
		"fe6bc32e-926a-4f1a-9026-9c385e00328b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "06473cfc-8a0f-4991-ab6c-0be7c79bc76e",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"3b7b0153-4477-44d3-a9d6-a34f7443c708": {},
				"52c4ab87-9739-463b-b8bc-e069d0753823": {},
				"e0f878d7-e5d2-429e-9f37-1cd764d69c8e": {},
				"d0778fa6-b4e8-4d56-9201-ccf5a765f18b": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 455,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116 210,116",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "e0f878d7-e5d2-429e-9f37-1cd764d69c8e",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"3b7b0153-4477-44d3-a9d6-a34f7443c708": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 286,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "06473cfc-8a0f-4991-ab6c-0be7c79bc76e"
		},
		"52c4ab87-9739-463b-b8bc-e069d0753823": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "336,116.75 472.5,116.75",
			"sourceSymbol": "3b7b0153-4477-44d3-a9d6-a34f7443c708",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "fe6bc32e-926a-4f1a-9026-9c385e00328b"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 3,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1
		},
		"18a55000-10b4-44c5-b64e-46056fcb392f": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "product",
			"path": "SEPMRA_I_Product_E('${context.product}')?sap-client=002",
			"httpMethod": "GET",
			"responseVariable": "${context.productInfo}",
			"id": "servicetask1",
			"name": "ProductData",
			"documentation": "Acces product data "
		},
		"e0f878d7-e5d2-429e-9f37-1cd764d69c8e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 160,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "18a55000-10b4-44c5-b64e-46056fcb392f"
		},
		"900608f5-5c51-4c96-9125-c15f09c12f19": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "18a55000-10b4-44c5-b64e-46056fcb392f",
			"targetRef": "06473cfc-8a0f-4991-ab6c-0be7c79bc76e"
		},
		"d0778fa6-b4e8-4d56-9201-ccf5a765f18b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "210,116 336,116",
			"sourceSymbol": "e0f878d7-e5d2-429e-9f37-1cd764d69c8e",
			"targetSymbol": "3b7b0153-4477-44d3-a9d6-a34f7443c708",
			"object": "900608f5-5c51-4c96-9125-c15f09c12f19"
		}
	}
}