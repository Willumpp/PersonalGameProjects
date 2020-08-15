using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WinScreen : MonoBehaviour
{
    public AudioSource audioSource;

    //Continue button
    public void Continue()
    {
        gameObject.SetActive(false);

        //Play sound
        audioSource.Play();
    }

    //Exit button
    public void Exit()
    {
        //Play sound
        audioSource.Play();

        Application.Quit();
    }
}
