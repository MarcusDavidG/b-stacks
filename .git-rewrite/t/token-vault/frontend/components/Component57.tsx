interface Props57 { value: number; label: string; onChange: (v: number) => void; }
export const Component57 = ({ value, label, onChange }: Props57) => (
  <div className="component-57">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
