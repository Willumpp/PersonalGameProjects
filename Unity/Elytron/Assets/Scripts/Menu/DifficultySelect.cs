using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DifficultySelect : MonoBehaviour
{
    public AudioSource audioSource;

    public static bool normal = false;
    public GameObject normalArrow;
    public GameObject hardArrow;

    // Start is called before the first frame update
    void Start()
    { 
        Normal();
    }

    public void Normal()
    {
        //Change variables
        normal = true;

        //Move arrow
        normalArrow.SetActive(true);
        hardArrow.SetActive(false);

        //Play sound
        audioSource.Play();
    }

    public void Hard()
    {
        /*Increase weapon cooldown
        Decrease weapon damage
        Decreaes spawn cooldown*/

        //Change variables
        normal = false;

        //Move arrow
        normalArrow.SetActive(false);
        hardArrow.SetActive(true);

        //Play sound
        audioSource.Play();
    }
}
