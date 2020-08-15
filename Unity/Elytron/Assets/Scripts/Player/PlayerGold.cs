using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerGold : MonoBehaviour
{
    public Text goldText;
    public static int gold = 0;
    public int startingGold = 0;

    // Start is called before the first frame update
    void Start()
    {
        gold += startingGold;
    }

    void Update()
    {
        goldText.text = gold.ToString();
    }

}
