using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BeetleT2Creator : MonoBehaviour
{
    public AudioSource audioSource;

    public GameObject obj;
    public float beetleCooldown = 6f;
    public static int beetleT2Number = 0;
    private float num;

    public void Hard()
    {
        //Decrease cooldown in hard mode
        if (DifficultySelect.normal == false)
        {
            beetleCooldown = 5f;
        }
    }

    // Start is called before the first frame update
    void Start()
    {

    }

    //Spawning Cooldown
    IEnumerator Spawner()
    {

        beetleT2Number = PlayerWaves.wave + 4; //Let functions keep track of the number of beetles alive
        //Spawn more beetles every wave
        for (int i = 0; i < PlayerWaves.wave + 4; i++)
        {
            if (beetleT2Number > 0)
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
