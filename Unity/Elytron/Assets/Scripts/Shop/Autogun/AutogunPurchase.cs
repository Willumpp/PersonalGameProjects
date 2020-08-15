using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class AutogunPurchase : MonoBehaviour
{
    public AudioSource audioSource;
    public AudioClip purchase;
    public static bool autogun = false;
    public bool isPurchased = false;
    public Sprite purchased;
    Image image;

    //
    void Start()
    {
        image = GetComponent<Image>();
    }

    //Purchase Autogun
    public void PurchaseAutogun()
    {
        if (PlayerGold.gold >= 100 && isPurchased == false)
        {
            autogun = true;
            isPurchased = true;
            PlayerGold.gold -= 100;

            //Play sound
            audioSource.clip = purchase;
            audioSource.Play();
        }
        if (isPurchased == true)
        {
            image.sprite = purchased;
        }
    }
}
