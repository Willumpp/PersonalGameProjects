using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WeaponWheel : MonoBehaviour
{
    public Sprite pistol;
    public Sprite shotgun;
    public Sprite pistolAutogun;
    public Sprite shotgunAutogun;
    public Sprite autogunAutogun;
    SpriteRenderer thisSprite;

    // Start is called before the first frame update
    void Start()
    {
        thisSprite = GetComponent<SpriteRenderer>();
    }

    // Update is called once per frame
    void Update()
    {
        //When Autogun isnt purchased
        if (PlayerShooting.weapon == 1 && AutogunPurchase.autogun == false) { thisSprite.sprite = pistol; }
        else if (PlayerShooting.weapon == 2 && AutogunPurchase.autogun == false) { thisSprite.sprite = shotgun; }

        //When Autogun is purchased
        else if (PlayerShooting.weapon == 1 && AutogunPurchase.autogun == true) { thisSprite.sprite = pistolAutogun; }
        else if (PlayerShooting.weapon == 2 && AutogunPurchase.autogun == true) { thisSprite.sprite = shotgunAutogun; }
        else if (PlayerShooting.weapon == 3 && AutogunPurchase.autogun == true) { thisSprite.sprite = autogunAutogun; }
    }
}
