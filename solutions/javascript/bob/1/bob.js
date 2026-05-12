export const hey = (message) => {
  const endsQuestionMark = message.trim().endsWith("?");
  const silence = message.trim().length == 0;
  const yelling = message.toUpperCase() == message && message.match("[A-Z]") != null;

  if (endsQuestionMark && yelling) {
    return "Calm down, I know what I'm doing!";
  } else if(endsQuestionMark) {
    return "Sure.";
  } else if(yelling) {
    return "Whoa, chill out!";
  } else if (silence) {
    return "Fine. Be that way!";
  } else {
    return "Whatever.";
  }
};
