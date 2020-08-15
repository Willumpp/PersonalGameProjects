{
    "id": "4728eb48-e9df-4bb1-a725-cb9abe572013",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_Player",
    "eventList": [
        {
            "id": "8e780795-3312-45fc-aa80-cf7c22b71a8e",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "4728eb48-e9df-4bb1-a725-cb9abe572013"
        },
        {
            "id": "6ffa29cf-1814-4aef-b6fc-87309b8891ff",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "4728eb48-e9df-4bb1-a725-cb9abe572013"
        },
        {
            "id": "8262105e-27a8-472b-9364-73382cb95c14",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "4728eb48-e9df-4bb1-a725-cb9abe572013"
        },
        {
            "id": "c6f1dca3-eb78-439d-9e0d-77bf21c6a8d7",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 2,
            "m_owner": "4728eb48-e9df-4bb1-a725-cb9abe572013"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": [
        {
            "id": "0240e627-d9b3-4568-833c-5beda35636d4",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 0
        },
        {
            "id": "adf0b596-6b5d-4222-aa5b-57dc3ac1bc2a",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 64,
            "y": 0
        },
        {
            "id": "617b22ea-ee9b-4e7f-84a7-bb2d4ad4369c",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 64,
            "y": 64
        },
        {
            "id": "ac0d19ec-2290-47ad-8542-068e10e1bbf8",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 64
        }
    ],
    "physicsStartAwake": false,
    "properties": [
        {
            "id": "59469e4e-8ebf-4de9-905f-167a74395db5",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "4",
            "varName": "moveSpeed",
            "varType": 0
        },
        {
            "id": "c3476ab6-dd0a-4cc8-a185-1a5f81e9935c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "600",
            "varName": "viewRange",
            "varType": 0
        },
        {
            "id": "e1380dca-d024-4cd4-a331-d9b4464615d3",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "possessed",
            "varType": 3
        },
        {
            "id": "21c13aa4-382b-4fd4-a3e4-4f534b6e7c9c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "30",
            "varName": "projectileSpeed",
            "varType": 0
        },
        {
            "id": "d1fcc2b3-ed20-4859-a2d3-a6425621e592",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.5",
            "varName": "reloadSpeed",
            "varType": 0
        },
        {
            "id": "6b7e6996-8125-4169-afa9-e071710cc2ec",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "3",
            "varName": "health_Obj",
            "varType": 0
        },
        {
            "id": "12ece2d4-8d23-4100-a6c8-b66401c1b502",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "damage",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "7e39f90c-70df-4520-97b3-f2b0fabd9284",
    "visible": true
}