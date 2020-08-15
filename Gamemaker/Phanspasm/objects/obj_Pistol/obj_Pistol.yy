{
    "id": "f37f377d-4f86-4cac-ab9a-2ec159192408",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_Pistol",
    "eventList": [
        {
            "id": "64d9c4b2-69bf-468d-a493-ce9883a27abc",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "f37f377d-4f86-4cac-ab9a-2ec159192408"
        },
        {
            "id": "355698e5-95e4-4112-b2ae-a8c293900533",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "f37f377d-4f86-4cac-ab9a-2ec159192408"
        },
        {
            "id": "55f478e2-2c97-41c3-9efc-82528a1bf932",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "f37f377d-4f86-4cac-ab9a-2ec159192408"
        },
        {
            "id": "5628585d-4ebe-4751-acb8-4cc2788cec65",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 2,
            "m_owner": "f37f377d-4f86-4cac-ab9a-2ec159192408"
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
            "id": "f22725bc-a7ba-43d9-8527-6b9b72110e81",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 0
        },
        {
            "id": "ffd9f292-cf5e-4124-af9b-fe0757f86378",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 64,
            "y": 0
        },
        {
            "id": "90e8327c-3159-4b88-bfc2-c336f61c23c6",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 64,
            "y": 64
        },
        {
            "id": "ee2c9c93-8435-49c5-b38a-12065dd61006",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 64
        }
    ],
    "physicsStartAwake": false,
    "properties": [
        {
            "id": "00b759df-d48c-4c9c-bd5a-6de2ae7ad290",
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
            "id": "89d531c7-443b-47ba-b179-ee1afa45d9c5",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "200",
            "varName": "weaponVolumeRange",
            "varType": 0
        },
        {
            "id": "b25c3498-5d65-4040-b3ec-c44ab8e2efd7",
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
            "id": "0bd29bb7-bc88-48ef-a638-e12cee26d6ad",
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
            "id": "bf59d17f-e0ac-43b5-a0f1-7396f8813393",
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
            "id": "78f99378-ab0e-4dbe-84cc-39450e53fd26",
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
            "id": "9834d376-6abd-41c4-a6b4-4c0482cf4b63",
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
    "spriteId": "89f29b67-2607-4e95-9bb0-f09fe0a84eb5",
    "visible": true
}