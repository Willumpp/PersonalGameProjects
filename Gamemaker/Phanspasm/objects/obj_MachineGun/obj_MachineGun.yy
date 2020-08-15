{
    "id": "26984ef8-b720-4332-93ac-54aab49f2864",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_MachineGun",
    "eventList": [
        {
            "id": "8ce7df10-0284-429d-bb6a-a64d8d863158",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "26984ef8-b720-4332-93ac-54aab49f2864"
        },
        {
            "id": "ce2e9d17-ad04-4dbe-823f-f7630923ef1d",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "26984ef8-b720-4332-93ac-54aab49f2864"
        },
        {
            "id": "4064fc82-1c1b-484b-a302-3c3e675a71c1",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "26984ef8-b720-4332-93ac-54aab49f2864"
        },
        {
            "id": "50286ebf-688e-4b85-a65f-bd1f5b8e4dd9",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 2,
            "m_owner": "26984ef8-b720-4332-93ac-54aab49f2864"
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
            "id": "77a2a91f-f3f8-48ce-a3f9-602950cda368",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 0
        },
        {
            "id": "094c51c8-ae3b-4c9a-80b3-4e731c239e56",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 64,
            "y": 0
        },
        {
            "id": "4e1baee5-801e-4aa4-8e45-52101dbea495",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 64,
            "y": 64
        },
        {
            "id": "3a89bb88-271f-45fc-ad7e-6431f65ad390",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 64
        }
    ],
    "physicsStartAwake": false,
    "properties": [
        {
            "id": "148f8ef1-d0a2-420f-b26b-04af3ea6b72c",
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
            "id": "6432c922-94b2-4048-b365-7eeb02ef8b01",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "300",
            "varName": "weaponVolumeRange",
            "varType": 0
        },
        {
            "id": "0187204f-b84b-4970-824d-0109077c31c0",
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
            "id": "81a063cd-2387-49dd-b064-af1386bd6ef5",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "45",
            "varName": "projectileSpeed",
            "varType": 0
        },
        {
            "id": "21b4c2a9-bc6d-4be5-814e-dddb81783e00",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.2",
            "varName": "reloadSpeed",
            "varType": 0
        },
        {
            "id": "4f7f74f5-fe7e-491e-8870-bf647a837a59",
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
            "id": "35b3eaf9-d634-447d-b0e8-eff130e1c3b7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.5",
            "varName": "damage",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "7ce9ce09-c938-4f52-85fb-37569cf2acf7",
    "visible": true
}