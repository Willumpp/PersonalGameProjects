using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CreateWall : MonoBehaviour
{
    public float offset;
    public GameObject obj;
    public int boxNumber = 10;
    public float distance = 2f;

    // Start is called before the first frame update
    void Start()
    {
        CreateWallFunction();
    }

    public void CreateWallFunction()
    {
        for (float i = 0f; i < boxNumber * distance; i += distance)
        {
            Instantiate(obj, new Vector3(0f, (-3.752f + i) + offset, 0f), Quaternion.identity);
        }
    }
}
