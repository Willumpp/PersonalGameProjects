using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurretMk3 : MonoBehaviour
{
    public AudioSource audioSource;
    public AudioClip purchase;

    public GameObject turretMk3;

    //Purchase turret Mk3
    public void PurchaseTurretMk3()
    {
        if (PlayerGold.gold >= 500)
        {
            PlayerGold.gold -= 500;
            Instantiate(turretMk3, transform.position, Quaternion.identity);

            //Play sound
            audioSource.clip = purchase;
            audioSource.Play();
        }
    }
}
