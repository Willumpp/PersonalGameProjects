using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerWaves : MonoBehaviour
{
    public BeetleT1Creator beetleT1Wave;
    public BeetleT2Creator beetleT2Wave;
    public BeetleT3Creator beetleT3Wave;
    public BeetleT4Creator beetleT4Wave;
    public int startingWave = 0;
    public Text waveNumber;
    public GameObject nextWaveButton;
    public GameObject shop;
    public GameObject winScreen;
    public static int wave = 1;
    public static bool wait = false;

    // Start is called before the first frame update
    void Start()
    {
        wave = startingWave;
    }

    // Update is called once per frame
    void Update()
    {
        //Activate once wave is finished
        waveNumber.text = wave.ToString();
        if (BeetleT1Creator.beetleT1Number <= 0 && BeetleT2Creator.beetleT2Number <= 0 && BeetleT3Creator.beetleT3Number <= 0 && wait == false)
        {
            StartWait();
        }
        //Boss death
        if (BeetleT4Creator.beetleT4Number <= 0 && BeetleT4Creator.hasSpawned == true && wait == false)
        {
            //Reset beetle count
            BeetleT3Creator.beetleT3Number = 0;
            BeetleT2Creator.beetleT2Number = 0;
            BeetleT1Creator.beetleT1Number = 0;
            //Kill all remaining beetles
            var beetle = GameObject.FindGameObjectsWithTag("Beetle");
            foreach (var i in beetle) { Destroy(i); };

            winScreen.SetActive(true); //Activate win
            StartWait();
        }
    }

    //Start after wave
    public void StartWait()
    {
        wait = true;
        nextWaveButton.SetActive(true);
        shop.SetActive(true);
    }

    //Get called by the next wave button
    public void EndWait()
    {
        wave += 1;
        wait = false;
        nextWaveButton.SetActive(false);
        shop.SetActive(false);
        beetleT1Wave.Generate();
        if (wave >= 5)
        {            
            beetleT2Wave.Generate();
        }
        if (wave >= 10)
        {
            beetleT3Wave.Generate();
        }
        if (wave == 15)
        {
            beetleT4Wave.Generate();
        }
    }
}
