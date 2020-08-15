using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurretMk2 : MonoBehaviour
{
    public AudioSource audioSource;
    public AudioClip purchase;

    public GameObject turretMk2;

    //Purchase turret Mk2
    public void PurchaseTurretMk2()
    {
        if (PlayerGold.gold >= 200)
        {
            PlayerGold.gold -= 200;
            Instantiate(turretMk2, Input.mousePosition, Quaternion.identity);

            //Play sound
            audioSource.clip = purchase;
            audioSource.Play();
        }
    }
}
