using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ShotgunReload : MonoBehaviour
{
    public AudioSource audioSource;
    public AudioClip purchase;

    public Sprite price1;
    public Sprite price2;
    public Sprite price3;
    public Sprite price4;
    public Sprite price5;

    private int timesPurchased = 0;
    private int cost = 100;
    Image image;

    void Start()
    {
        image = GetComponent<Image>();
    }

    //Purchase Shotgun Reload
    public void PurchaseShotgunReload()
    {
        if (PlayerGold.gold >= cost && timesPurchased < 5)
        {
            PlayerGold.gold -= cost;
            PlayerShooting.shotgunShootingSpeed -= 0.2f;
            timesPurchased += 1;

            //Play sound
            audioSource.clip = purchase;
            audioSource.Play();

            if (timesPurchased == 1)
            {
                cost = 150;
                image.sprite = price1;
            }
            else if (timesPurchased == 2)
            {
                cost = 225;
                image.sprite = price2;
            }
            else if (timesPurchased == 3)
            {
                cost = 350;
                image.sprite = price3;
            }
            else if (timesPurchased == 4)
            {
                cost = 500;
                image.sprite = price4;
            }
            else if (timesPurchased >= 5)
            {
                image.sprite = price5;
            }
        }
    }

}
