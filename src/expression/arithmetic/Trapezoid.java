package expression.arithmetic;

import aspect.AspectInterface;
import expression.Component;
import expression.ComponentMultiple;
import expression.ConstantVector;

import java.util.ArrayList;
import java.util.Map;

public class Trapezoid extends ComponentMultiple {

	public Trapezoid(Component a, ConstantVector b) {
        super();
        ArrayList<Component> comps = new ArrayList<Component>();
            comps.add(a);
            comps.addAll(b.getAllComponents());
            this._components = comps;
            this._expr = " CORNER ";
        }

    public Trapezoid(ArrayList<Component> comps) {
        super(comps);
    }

    @Override
        public String getName()
        {
            String out = this._components.get(0).getName() + this._expr + "{";
            for( Component c : this._components.subList(1,this._components.size()))
                out += c.getName() + " ";
            out += "}";
            return out;
        }

        @Override
        public String reportEvaluation(Map<String, Double> variables)
        {
            String out = this._components.get(0).reportEvaluation(variables) + this._expr + "{";
            for( Component c : this._components.subList(1,this._components.size()))
                out += c.reportEvaluation(variables) + " ";
            out += "}";
            return out;
        }

        @Override
        protected double calculateValue(Map<String, Double> variables)
        {
            double pH = this._components.get(0).getValue(variables);
            double a = this._components.get(1).getValue(variables);
            double b = this._components.get(2).getValue(variables);
            double c = this._components.get(3).getValue(variables);
            double d = this._components.get(4).getValue(variables);

            if (pH <= a || pH >= d) {
                return 0.0;
            } else if (pH >= b && pH <= c) {
                return 1.0;
            } else if (pH > a && pH < b) {
                return (pH - a) / (b - a);
            } else {
                return (d - pH) / (d - c);
            }
        }

    @Override
    public Component differentiate(String withRespectTo) {
        return null;
    }

    @Override
        public Object evaluate(AspectInterface subject)
        {
            double pH = (double) this._components.get(0).evaluate(subject);
            double a = (double) this._components.get(1).evaluate(subject);
            double b = (double) this._components.get(2).evaluate(subject);
            double c = (double) this._components.get(3).evaluate(subject);
            double d = (double) this._components.get(4).evaluate(subject);

            if (pH <= a || pH >= d) {
                return 0.0;
            } else if (pH >= b && pH <= c) {
                return 1.0;
            } else if (pH > a && pH < b) {
                return (pH - a) / (b - a);
            } else {
                return (d - pH) / (d - c);
            }
        }
    }