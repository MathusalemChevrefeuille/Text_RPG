using UnityEngine;

public class QuitGame : MonoBehaviour
{
    public void Quit()
    {
        Debug.Log("Bouton Quit cliqué !");
        Application.Quit();
    }
}