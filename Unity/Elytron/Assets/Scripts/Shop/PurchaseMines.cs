using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PurchaseMines : MonoBehaviour
{
    public AudioSource audioSource;
    public AudioClip purchase;

    public GameObject mine;
    public int mineCount = 10;

    public void BuyMines()
    {
        if (PlayerGold.gold >= 150)
        {
            PlayerGold.gold -= 150;
            for (int i = 0; i < mineCount; i++)
            {
                Vector3 temp = new Vector3(Random.Range(-0.56f, -9.298f), Random.Range(-3.86f, 3.976f), 0f);
                Instantiate(mine, temp, Quaternion.identity);
            }

            //Play sound
            audioSource.clip = purchase;
            audioSource.Play();
        }
    }
}
