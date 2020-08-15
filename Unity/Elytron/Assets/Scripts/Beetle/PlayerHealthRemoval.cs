using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHealthRemoval : MonoBehaviour
{
    public int damage = 5;

    // Update is called once per frame
    void Update()
    { 
        //Attack player
        if (transform.position.x > 8.5f)
        {
            PlayerHealth.health -= damage;
            Destroy(gameObject);
        }
    }
}
