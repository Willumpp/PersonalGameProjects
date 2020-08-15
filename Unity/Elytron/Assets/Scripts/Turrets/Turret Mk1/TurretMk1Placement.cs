using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurretMk1Placement : MonoBehaviour
{
    BoxCollider2D turretCollider;
    public static bool hasClicked = false;

    // Start is called before the first frame update
    void Start()
    {
        //Disable Collider
        turretCollider = GetComponent<BoxCollider2D>();
        turretCollider.enabled = false;
        hasClicked = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (hasClicked == false)
        {
            //Move Turret unitl clicked
            transform.position = Camera.main.ScreenToWorldPoint(Input.mousePosition);
            transform.position = new Vector3(transform.position.x, transform.position.y, 0f);
        }
        if (Input.GetMouseButtonDown(0) && transform.position.x > 0.7 && transform.position.y > -3.8f && transform.position.y < 3.8f)
        {
            turretCollider.enabled = true;
            hasClicked = true;
            this.enabled = false;
        }
    }
}
