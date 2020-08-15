using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerShooting : MonoBehaviour
{
    public AudioSource audioSource;
    public AudioClip pistolSound;
    public AudioClip shotgunSound;
    public AudioClip autogunSound;
    public AudioClip purchase;

    public GameObject player;
    public GameObject projectile;

    public Text ammoText;

    public int ammo = 128;

    public float shotgunSpread = 180f;
    public int shotgunBulletNumber = 5;

    static public float shotgunShootingSpeed = 1.2f;
    static public float shotgunDamage = 2.5f;
    static public float autogunShootingSpeed = 0.25f;
    static public float autogunDamage = 3.0f;
    public static float pistolDamage = 2.5f;
    public float pistolShootingSpeed = 0.55f;

    public static int weapon = 1;

    public void Hard()
    {
        //Change variables if hard is active
        if (DifficultySelect.normal == false)
        {
            shotgunDamage = 2;
            shotgunShootingSpeed = 1.5f;
            autogunDamage = 2.5f;
            autogunShootingSpeed = 0.25f;
            pistolDamage = 2f;
        }
    }
    // Start is called before the first frame update
    void Start()
    {

        //Start the shooting cooldown
        StartCoroutine(Shoot());
    }

    // Shooting Cooldown
    IEnumerator Shoot()
    {
        while (true)
        {
            //Pistol
            if (Input.GetKey(KeyCode.Space) && weapon == 1)
            {
                Instantiate(projectile, player.transform.position, Quaternion.identity);

                //Play sound
                audioSource.clip = pistolSound;
                audioSource.Play();
            }
            //Shotgun
            else if (Input.GetKey(KeyCode.Space) && weapon == 2 && ammo-4 > -1)
            {
                float shotgunAngle = shotgunSpread / shotgunBulletNumber;

                //Play sound
                audioSource.clip = shotgunSound;
                audioSource.Play();

                for (int i = 1;i<=shotgunBulletNumber;i++)
                {
                    Instantiate(projectile, player.transform.position, transform.rotation * Quaternion.Euler(0f, 0f, 180 - (shotgunSpread / 2f) + (i * shotgunAngle)));
                }
                ammo -= 4;
            }
            //Autogun
            if (Input.GetKey(KeyCode.Space) && weapon == 3 && ammo-1 > -1)
            {
                Instantiate(projectile, player.transform.position, Quaternion.identity);
                ammo -= 1;

                //Play sound
                audioSource.clip = autogunSound;
                audioSource.Play();
            }

            //Reload Timer

            //Pistol
            if (weapon == 1)
            {
                yield return new WaitForSeconds(pistolShootingSpeed);
            }
            //Shotgun
            else if (weapon == 2)
            {
                yield return new WaitForSeconds(shotgunShootingSpeed);
            }
            else if (weapon == 3)
            {
                yield return new WaitForSeconds(autogunShootingSpeed);
            }
            yield return null;
        }
    }

    void Update()
    {
        //Selecting Weapons
        if (Input.GetKey(KeyCode.Alpha1)) { weapon = 1; }
        else if (Input.GetKey(KeyCode.Alpha2)) { weapon = 2; }
        else if (Input.GetKey(KeyCode.Alpha3) && AutogunPurchase.autogun == true) { weapon = 3; }

        //Display Ammo
        ammoText.text = ammo.ToString();
    }

    //Shop Increase ammo
    public void AmooIncrease()
    {
        if (PlayerGold.gold >= 50)
        {
            PlayerGold.gold -= 50;
            ammo += 128;

            //Play sound
            audioSource.clip = purchase;
            audioSource.Play();
        }
    }
}
