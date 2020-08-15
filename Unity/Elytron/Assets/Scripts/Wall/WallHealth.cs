using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WallHealth : MonoBehaviour
{
    private float health = 500;
    public Sprite wall1;
    public Sprite wall2;
    public Sprite wall3;
    public Sprite wall4;
    public Sprite wall5;
    SpriteRenderer spr;

    // Start is called before the first frame update
    void Start()
    {
        spr = GetComponent<SpriteRenderer>();
    }

    public void DecreaseHealth(float wallDamage)
    {
        health -= wallDamage;
    }

    // Update is called once per frame
    void Update()
    {
        //Health display
        if (health > 500 * 0.8) { spr.sprite = wall1; }
        if (health <= 500 * 0.8 && health > 500 * 0.6) { spr.sprite = wall2; }
        if (health <= 500 * 0.6 && health > 500 * 0.4) { spr.sprite = wall3; }
        if (health <= 500 * 0.4 && health > 500 * 0.2) { spr.sprite = wall4; }
        if (health <= 500 * 0.2 && health > 500 * 0) { spr.sprite = wall5; }

        //Destroy upon loss of health
        if (health <= 0)
        {
            Destroy(gameObject);
        }
    }
}
