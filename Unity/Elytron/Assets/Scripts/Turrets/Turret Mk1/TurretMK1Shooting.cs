using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurretMK1Shooting : MonoBehaviour
{
    public AudioSource audioSource;

    public float shootingSpeed = 1f;
    public GameObject projectile;

    // Start is called before the first frame update
    void Start()
    {
        //Start the shooting cooldown
        StartCoroutine(Shoot());
    }

    //Shooting Cooldown
    IEnumerator Shoot()
    {
        while (true)
        {
            if (TurretMk1Placement.hasClicked == true)
            { 
                //Create Bullet
                Instantiate(projectile, transform.position, Quaternion.identity);

                //Play sound
                audioSource.Play();

                //Cooldown
                yield return new WaitForSeconds(shootingSpeed);                
            }
            yield return null;
        }
    }

}
