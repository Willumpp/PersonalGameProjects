using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShopButton : MonoBehaviour
{
    public AudioSource audioSource;

    public GameObject shop;
    public static bool shopOpened = false;

    public void OpenShop()
    {
        Debug.Log("Shop Opened");
        shopOpened = true;
        shop.SetActive(true);
        Time.timeScale = 0f;

        //Play sound
        audioSource.Play();
    }

    public void CloseShop()
    {
        Debug.Log("Shop Closed");
        shopOpened = false;
        shop.SetActive(false);
        Time.timeScale = 1f;

        //Play sound
        audioSource.Play();
    }

}
