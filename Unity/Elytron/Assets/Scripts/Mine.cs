using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Mine : MonoBehaviour
{
    //Collision Detection
    void OnCollisionEnter2D(Collision2D collison)
    {
        Debug.Log(collison.gameObject.tag);
        if (collison.gameObject.tag == "Beetle")
        {
            Destroy(gameObject);
        }
    }
}
