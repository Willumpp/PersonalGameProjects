using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BeetleT4Movement : MonoBehaviour
{
    public Rigidbody2D rb;
    public float speed = 1;

    // Update is called once per frame
    void FixedUpdate()
    {
        //Move the boss
        rb.MovePosition(new Vector2(transform.position.x + (speed * Time.deltaTime), transform.position.y));
    }
}
