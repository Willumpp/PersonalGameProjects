using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RepairWallPurchase : MonoBehaviour
{
    public AudioSource audioSource;
    public AudioClip purchase;

    public CreateWall createWall;

    public void PurchaseRepairWall()
    {
        if (PlayerGold.gold >= 100)
        {
            PlayerGold.gold -= 100;
            var clones = GameObject.FindGameObjectsWithTag("CentreWall");
            foreach (var clone in clones)
            {
                Destroy(clone);
            }
            createWall.CreateWallFunction();

            //Play sound
            audioSource.clip = purchase;
            audioSource.Play();
        }
        
    }
}
