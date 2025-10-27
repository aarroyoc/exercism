class Badge {
    public String print(Integer id, String name, String department) {
        var sb = new StringBuilder();
        if (id != null) {
          sb.append(String.format("[%d] - ", id));
        }
        sb.append(name);
        if (department != null) {
            sb.append(String.format(" - %s", department.toUpperCase()));
        } else {
            sb.append(" - OWNER");
        }
        return sb.toString();
    }
}
