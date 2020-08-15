using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BeetleT4Creator : MonoBehaviour
{
    public AudioSource audioSource;
    public AudioClip bossSpawn;

    public GameObject obj;
    public static int beetleT4Number = 0;
    public static bool hasSpawned = false;
    private float num;

    void Start()
    {
        audioSource.clip = bossSpawn;
    }

    //Start the spawning cooldown
    public void Generate()
    {
        //Play sound
        audioSource.Play();

        //Create the big bad boss
        Instantiate(obj, new Vector3(-9.35f, 0f, 0f), Quaternion.identity);
        beetleT4Number = 1;
        hasSpawned = true;
    }
}

