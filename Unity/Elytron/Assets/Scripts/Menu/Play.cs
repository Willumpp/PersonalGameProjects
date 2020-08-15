using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Play : MonoBehaviour
{
    public AudioSource audioSource;

    public GameObject mainMenu;
    public PlayerShooting playerShooting;
    public BeetleT2Creator beetleT2Cooldown;
    public BeetleT3Creator beetleT3Cooldown;
    public GameObject shield;

    // Start is called before the first frame update
    void Start()
    {
        //Pause game and display menu
        Time.timeScale = 0f;
        mainMenu.SetActive(true);
    }

    public void StartGame()
    {
        Time.timeScale = 1f;
        mainMenu.SetActive(false);

        //Play sound
        audioSource.Play();

        //Change variables
        if (DifficultySelect.normal == false)
        {
            playerShooting.Hard();
            beetleT2Cooldown.Hard();
            beetleT3Cooldown.Hard();
            shield.SetActive(false);
        }
    }
}
