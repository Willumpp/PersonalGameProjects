using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerBullet : MonoBehaviour
{
    public float shotgunPlayerOffset;
    public float offset;
    public float speed;

    // Start is called before the first frame update
    void Start()
    {
        //Bullet looks towards player
        if (PlayerShooting.weapon == 1 || PlayerShooting.weapon == 3)
        {
            Vector2 direction = Camera.main.ScreenToWorldPoint(Input.mousePosition) - transform.position;
            float angle = Mathf.Atan2(direction.y, direction.x) * Mathf.Rad2Deg;
            Quaternion rotation = Quaternion.AngleAxis(angle - 90f, Vector3.forward);
            transform.rotation = Quaternion.Slerp(transform.rotation, rotation, 1);
            
        }

        //Position the bullet relative to the player
        transform.position += transform.right * offset;
        transform.position += transform.up * shotgunPlayerOffset;
    }

    //Collision Detection
    void OnCollisionEnter2D(Collision2D collison)
    {
        //Destroy self uppon beetle collision
        if (collison.gameObject.tag == "Beetle")
        {
            Destroy(gameObject);
        }
    }

    //When Invisible to camera
    void OnBecameInvisible()
    {
        //Destroy when off camera
        Destroy(gameObject);
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        //Move Bullet Forwards
        transform.position += transform.up * Time.deltaTime * speed;
    }
}
