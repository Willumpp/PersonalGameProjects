using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BeetleT1Creator : MonoBehaviour
{
    public AudioSource audioSource;

    public GameObject obj;
    public float beetleCooldown = 5f;
    public static int beetleT1Number = 0;
    private float num;

    // Start is called before the first frame update
    void Start()
    {
        //Start the spawning cooldown
        StartCoroutine(Spawner()); 
    }

    //Spawning Cooldown
    IEnumerator Spawner()
    {

        beetleT1Number = PlayerWaves.wave + 4; //Let functions keep track of the number of beetles alive
        //Spawn more beetles every wave
        for (int i = 0; i < PlayerWaves.wave + 4; i++)
        {
            if (beetleT1Number > 0)
            {
                num = Random.Range(-3.969f, 4.047f);
                Instantiate(obj, new Vector3(-9.36f, num, 0f), Quaternion.identity);

                //Play sound
                audioSource.Play();

                yield return new WaitForSeconds(beetleCooldown);
                yield return null;
            }
        }
    }

    //Start the spawning cooldown
    public void Generate()
    {
        beetleCooldown = beetleCooldown * 0.95f;
        StartCoroutine(Spawner());
    }
}
