using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurretMk1 : MonoBehaviour
{
    public AudioSource audioSource;
    public AudioClip purchase;

    public GameObject turretMk1;

    //Purchase turret Mk1
    public void PurchaseTurretMk1()
    {
        if (PlayerGold.gold >= 100)
        {
            PlayerGold.gold -= 100;
            Instantiate(turretMk1, transform.position, Quaternion.identity);

            //Play sound
            audioSource.clip = purchase;
            audioSource.Play();
        }
    }
}
