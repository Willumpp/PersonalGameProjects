using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BeetleT1Health : MonoBehaviour
{
    public Sprite health10;
    public Sprite health9;
    public Sprite health8;
    public Sprite health7;
    public Sprite health6;
    public Sprite health5;
    public Sprite health4;
    public Sprite health3;
    public Sprite health2;
    public Sprite health1;
    SpriteRenderer spr;
    private float health = 10f;

    // Start is called before the first frame update
    void Start()
    { 
        spr = GetComponent<SpriteRenderer>();
    }

    //Collision Detection
    void OnCollisionEnter2D(Collision2D collison)
    {
        //Lower beetle health upon bullet collision
        if (collison.gameObject.tag == "PlayerBullet")
        {
            if (PlayerShooting.weapon == 1)
            {
                health -= PlayerShooting.pistolDamage;
            }
            else if (PlayerShooting.weapon == 2)
            {
                health -= PlayerShooting.shotgunDamage;
            }
            else if (PlayerShooting.weapon == 3)
            {
                health -= PlayerShooting.autogunDamage;
            }
        }
        //Turret Bullets
        if (collison.gameObject.tag == "BulletGray")
        {
            health -= 1f;
        }
        if (collison.gameObject.tag == "BulletHot")
        {
            health -= 1.5f;
        }
        if (collison.gameObject.tag == "BulletLaser")
        {
            health -= 2f;
        }

        //Mine
        if (collison.gameObject.tag == "Mine")
        {
            health -= 10f;
        }
    }

    // Update is called once per frame
    void Update()
    {
        //Health display
        if (health > 9) { spr.sprite = health10; }
        if (health <= 9 && health > 8) { spr.sprite = health9; }
        if (health <= 8 && health > 7) { spr.sprite = health8; }
        if (health <= 7 && health > 6) { spr.sprite = health7; }
        if (health <= 6 && health > 5) { spr.sprite = health6; }
        if (health <= 5 && health > 4) { spr.sprite = health5; }
        if (health <= 4 && health > 3) { spr.sprite = health4; }
        if (health <= 3 && health > 2) { spr.sprite = health3; }
        if (health <= 2 && health > 1) { spr.sprite = health2; }
        if (health <= 1 && health > 0) { spr.sprite = health1; }

        //Destroy beetle at low health
        if (health <= 0)
        {
            PlayerGold.gold += 10;
            Destroy(gameObject);
            BeetleT1Creator.beetleT1Number -= 1;
        }

    }
}
