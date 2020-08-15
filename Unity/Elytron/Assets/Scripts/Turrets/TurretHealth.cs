using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurretHealth : MonoBehaviour
{
    private float health = 100;

    public void DecreaseHealth(float turretDamage)
    {
        //Remove health when called
        health -= turretDamage;
    }

    // Update is called once per frame
    void Update()
    {
        //Destroy upon loss of health
        if (health <= 0)
        {
            Destroy(gameObject);
        }
    }
}
