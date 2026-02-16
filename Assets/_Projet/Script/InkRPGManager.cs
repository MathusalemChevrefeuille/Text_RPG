using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;
using TMPro;

public class InkRPGManager : MonoBehaviour
{
    [Header("Ink Story")]
    [SerializeField] private TextAsset inkJSONAsset;

    [Header("UI Elements")]
    [SerializeField] private TextMeshProUGUI storyText;
    [SerializeField] private GameObject buttonPrefab;
    [SerializeField] private Transform buttonContainer;

    private Story story;

    void Start()
    {
        Debug.Log("START appelé");

        if (inkJSONAsset == null)
        {
            Debug.LogError("ERREUR : Ink JSON Asset est NULL !");
            return;
        }

        Debug.Log("Création de l'histoire...");
        story = new Story(inkJSONAsset.text);


        Debug.Log("Histoire créée, appel RefreshUI");
        RefreshUI();
    }

    void RefreshUI()
    {
        Debug.Log("RefreshUI appelé");

        foreach (Transform child in buttonContainer)
        {
            Destroy(child.gameObject);
        }

        if (story.canContinue)
        {
            string text = "";

            while (story.canContinue)
            {
                text += story.Continue();
            }

            Debug.Log("Texte à afficher : " + text);
            storyText.text = text.Trim();
        }
        else
        {
            Debug.Log("PROBLÈME : story.canContinue = false");
        }

        Debug.Log("Nombre de choix : " + story.currentChoices.Count);

        if (story.currentChoices.Count > 0)
        {
            foreach (Choice choice in story.currentChoices)
            {
                Debug.Log("Création bouton : " + choice.text);
                GameObject button = Instantiate(buttonPrefab, buttonContainer);

                TextMeshProUGUI buttonText = button.GetComponentInChildren<TextMeshProUGUI>();
                buttonText.text = choice.text;

                Button btnComponent = button.GetComponent<Button>();
                int choiceIndex = choice.index;

                btnComponent.onClick.AddListener(() => OnChoiceSelected(choiceIndex));
            }
        }
    }

    void OnChoiceSelected(int choiceIndex)
    {
        Debug.Log("Choix sélectionné : " + choiceIndex);
        story.ChooseChoiceIndex(choiceIndex);
        RefreshUI();
    }
}