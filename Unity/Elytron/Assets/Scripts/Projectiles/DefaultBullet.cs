using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DefaultBullet : MonoBehaviour
{
    public float offset;
    public float speed;
    
    // Start is called before the first frame update
    void Start()
    {
        //Turn Towards Cursor
        Vector2 direction = Camera.main.ScreenToWorldPoint(Input.mousePosition) - transform.position;
        float angle = Mathf.Atan2(direction.y, direction.x) * Mathf.Rad2Deg;
        Quaternion rotation = Quaternion.AngleAxis(angle - 90f, Vector3.forward);
        transform.rotation = Quaternion.Slerp(transform.rotation, rotation, 1);
        transform.position += transform.up * offset;
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
        Destroy(gameObject);
    }

    // Update is called once per frame
    void Update()
    {
        transform.position += transform.up * Time.deltaTime * speed;
    }
}
