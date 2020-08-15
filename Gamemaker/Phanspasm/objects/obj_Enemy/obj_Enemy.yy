{
    "id": "00361505-2019-46a5-946f-1d09ce8b0ef4",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_Enemy",
    "eventList": [
        {
            "id": "c9dbcdfd-5dcc-47f3-9359-77b4c4a5238d",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "00361505-2019-46a5-946f-1d09ce8b0ef4"
        },
        {
            "id": "5a26a341-7de6-4ee6-aa57-43ea4eb5941a",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "00361505-2019-46a5-946f-1d09ce8b0ef4"
        },
        {
            "id": "2896f75c-cd4c-4f9c-b822-a29031d31671",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "00361505-2019-46a5-946f-1d09ce8b0ef4"
        },
        {
            "id": "042c8f40-e159-4a4d-8b1c-a2a29740b76f",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 2,
            "m_owner": "00361505-2019-46a5-946f-1d09ce8b0ef4"
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
            "id": "35ad639c-fe58-4bc4-a567-7f4850d18042",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 0
        },
        {
            "id": "bfb3a226-6f0e-4c35-9b9a-a7c14fb3159c",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 64,
            "y": 0
        },
        {
            "id": "ca090d97-fd35-4953-b100-4ecf70e9766f",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 64,
            "y": 64
        },
        {
            "id": "edb5a5fd-690f-4dbb-bf86-21e2e7144326",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 64
        }
    ],
    "physicsStartAwake": false,
    "properties": [
        {
            "id": "dd7ad321-6a8c-4335-9a51-21b7032b4d4e",
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
            "id": "5f79cd05-221b-4d4d-8c15-40ecc3ed2ae0",
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
            "id": "3d94f617-f69d-4a55-881c-65ce5c0c48f0",
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
            "id": "dcaaaede-8ffc-4a90-8173-1fa620bfb7ea",
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
            "id": "06e96110-3ccc-445d-a35f-cfd1e324f697",
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
            "id": "50b845c6-b655-4496-b6c7-24920439ec35",
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
            "id": "014bec32-8c3c-4c02-830f-00de0b5cf023",
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
    "spriteId": "0dec7ff6-2ea9-47b0-9c08-4f6e04610dc3",
    "visible": true
}