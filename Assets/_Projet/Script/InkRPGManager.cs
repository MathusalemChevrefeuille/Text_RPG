
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
       
        story = new Story(inkJSONAsset.text);


        RefreshUI();
    }

   
    void RefreshUI()
    {

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

            storyText.text = text.Trim(); 
        }


        if (story.currentChoices.Count > 0)
        {
            foreach (Choice choice in story.currentChoices)
            {

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

        story.ChooseChoiceIndex(choiceIndex);


        RefreshUI();
    }
}