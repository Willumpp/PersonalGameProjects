using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    public Rigidbody2D rb;
    public float moveSpeed = 3;

    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void FixedUpdate()
    {
        //X Axis
        if (Input.GetKey("a")) { rb.MovePosition(new Vector2(transform.position.x - moveSpeed * Time.deltaTime, transform.position.y)); };
        if (Input.GetKey("d")) { rb.MovePosition(new Vector2(transform.position.x + moveSpeed * Time.deltaTime, transform.position.y)); };

        //Y Axis
        if (Input.GetKey("s")) { rb.MovePosition(new Vector2(transform.position.x,transform.position.y - moveSpeed * Time.deltaTime)); };
        if (Input.GetKey("w")) { rb.MovePosition(new Vector2(transform.position.x, transform.position.y + moveSpeed * Time.deltaTime)); };

        //Diagonally North
        if (Input.GetKey("w") == true && Input.GetKey("d") == true) {
            rb.MovePosition(new Vector2(transform.position.x + moveSpeed * Time.deltaTime, transform.position.y + moveSpeed * Time.deltaTime));
        };
        if (Input.GetKey("w") == true && Input.GetKey("a") == true)
        {
            rb.MovePosition(new Vector2(transform.position.x - moveSpeed * Time.deltaTime, transform.position.y + moveSpeed * Time.deltaTime));
        };

        //Diagonally South
        if (Input.GetKey("s") == true && Input.GetKey("d") == true)
        {
            rb.MovePosition(new Vector2(transform.position.x + moveSpeed * Time.deltaTime, transform.position.y - moveSpeed * Time.deltaTime));
        };
        if (Input.GetKey("s") == true && Input.GetKey("a") == true)
        {
            rb.MovePosition(new Vector2(transform.position.x - moveSpeed * Time.deltaTime, transform.position.y - moveSpeed * Time.deltaTime));
        };
    }
}

