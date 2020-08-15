using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Shield : MonoBehaviour
{
    private float health = 50;
    public Text shieldText;

    public void DecreaseHealth(float shieldDamage)
    {
        health -= shieldDamage;
    }

    // Update is called once per frame
    void Update()
    {
        shieldText.text = health.ToString();

        //Destroy upon loss of health
        if (health <= 0)
        {
            Destroy(gameObject);
        }
    }
}