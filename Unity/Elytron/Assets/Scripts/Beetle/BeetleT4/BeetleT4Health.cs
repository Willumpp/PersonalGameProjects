using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BeetleT4Health : MonoBehaviour
{
    private float health = 500f;
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
                health -= PlayerShooting.pistolDamage - 1f;
            }
            else if (PlayerShooting.weapon == 2)
            {
                health -= PlayerShooting.shotgunDamage - 1f;
            }
            else if (PlayerShooting.weapon == 3)
            {
                health -= PlayerShooting.autogunDamage - 1f;
            }
        }
        //Turret Bullets
        if (collison.gameObject.tag == "BulletGray")
        {
            health -= 0.25f;
        }
        if (collison.gameObject.tag == "BulletHot")
        {
            health -= 0.5f;
        }
        if (collison.gameObject.tag == "BulletLaser")
        {
            health -= 1f;
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
        if (health > 500 * 0.9) { spr.sprite = health10; }
        if (health <= 500 * 0.9 && health > 500 * 0.8) { spr.sprite = health9; }
        if (health <= 500 * 0.8 && health > 500 * 0.7) { spr.sprite = health8; }
        if (health <= 500 * 0.7 && health > 500 * 0.6) { spr.sprite = health7; }
        if (health <= 500 * 0.6 && health > 500 * 0.5) { spr.sprite = health6; }
        if (health <= 500 * 0.5 && health > 500 * 0.4) { spr.sprite = health5; }
        if (health <= 500 * 0.4 && health > 500 * 0.3) { spr.sprite = health4; }
        if (health <= 500 * 0.3 && health > 500 * 0.3) { spr.sprite = health3; }
        if (health <= 500 * 0.2 && health > 500 * 0.1) { spr.sprite = health2; }
        if (health <= 500 * 0.1 && health > 0) { spr.sprite = health1; }

        //Destroy beetle at low health
        if (health <= 0)
        {
            PlayerGold.gold += 500;
            Destroy(gameObject);
            BeetleT4Creator.beetleT4Number -= 1;
        }
    }
}

