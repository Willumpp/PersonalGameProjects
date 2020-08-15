using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShopBack : MonoBehaviour
{
    public AudioSource audioSource;

    public GameObject shop;

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            ShopButton.shopOpened = false;
            Time.timeScale = 1f;
            shop.SetActive(false);

            //Play sound
            audioSource.Play();
        }
    }
}
