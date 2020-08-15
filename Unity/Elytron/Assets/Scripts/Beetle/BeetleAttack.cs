using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BeetleAttack : MonoBehaviour
{
    public float attackSpeed = 1;
    public float attackDamage;
    private bool canAttack = true;

    //Collision Detection
    void OnCollisionStay2D(Collision2D collision)
    {
        //Determine if collider is the wall
        if (collision.gameObject.tag == "CentreWall")
        {
            //Get the wallhealth script from wall clone 
            if (canAttack == true)
            {
                WallHealth wallHealth = collision.gameObject.GetComponent<WallHealth>();
                wallHealth.DecreaseHealth(attackDamage); //Decrease health from clone
                canAttack = false;
                StartCoroutine(Attack()); //Start the cooldown
            }
        }
        //Determine if collider is a turret
        if (collision.gameObject.layer == 12) //Turret layer
        {
            //Get the wallhealth script from wall clone 
            if (canAttack == true)
            {
                TurretHealth turretHealth = collision.gameObject.GetComponent<TurretHealth>();
                turretHealth.DecreaseHealth(attackDamage); //Decrease health from clone
                canAttack = false;
                StartCoroutine(Attack()); //Start the cooldown
            }
        }
        //Determine if collider is the shield
        if (collision.gameObject.tag == "Shield")
        {
            //Get the wallhealth script from wall clone 
            if (canAttack == true)
            {
                Shield shieldHealth = collision.gameObject.GetComponent<Shield>();
                shieldHealth.DecreaseHealth(10f);
                canAttack = false;
                StartCoroutine(Attack()); //Start the cooldown
            }
        }
    }

    IEnumerator Attack()
    {
        //Attack cooldown
        yield return new WaitForSeconds(attackSpeed);
        canAttack = true;
        yield return null;
    }

}
