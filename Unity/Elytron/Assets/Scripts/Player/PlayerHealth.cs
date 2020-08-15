using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerHealth : MonoBehaviour
{
    public AudioSource audioSource;
    public AudioClip gameOverSound;

    public GameObject lossScreen;
    public static float health = 150;
    public Text healthText;

    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        //Lose upon loss of health
        if (health <= 0)
        {
            Lose();
        }

        //Display health
        if (health >= 0)
        {
            healthText.text = health.ToString();
        }
    }

    public void Lose()
    {
        //Play sound
        audioSource.clip = gameOverSound;
        audioSource.Play();

        lossScreen.SetActive(true);
        Time.timeScale = 0f;
    }
}
