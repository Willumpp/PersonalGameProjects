using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BeetleT2Movement : MonoBehaviour
{
    public Rigidbody2D rb;
    public float speed = 3;

    // Update is called once per frame
    void FixedUpdate()
    {
        rb.MovePosition(new Vector2(transform.position.x + (speed * Time.deltaTime), transform.position.y));
    }
}
